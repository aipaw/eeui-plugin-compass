package eeui.android.compass.module;


import com.taobao.weex.annotation.JSMethod;
import com.taobao.weex.bridge.JSCallback;
import com.taobao.weex.common.WXModule;

import java.util.HashMap;

import eeui.android.compass.module.sensor_compass.CompassModule;
import eeui.android.compass.module.sensor_compass.ModuleResultListener;

public class AppcompassModule extends WXModule {

    @JSMethod
    public void get(final JSCallback jsCallback){
        CompassModule.getInstance(mWXSDKInstance.getContext()).get(new ModuleResultListener() {
            @Override
            public void onResult(Object o) {
                jsCallback.invoke(o);
            }
        });
    }

    @JSMethod
    public void watch(HashMap<String, Integer> param, final JSCallback jsCallback){
        CompassModule.getInstance(mWXSDKInstance.getContext()).watch(param, new ModuleResultListener() {
            @Override
            public void onResult(Object o) {
                jsCallback.invokeAndKeepAlive(o);
            }
        });
    }

    @JSMethod
    public void clearWatch(final JSCallback jsCallback){
        CompassModule.getInstance(mWXSDKInstance.getContext()).clearWatch(new ModuleResultListener() {
            @Override
            public void onResult(Object o) {
                jsCallback.invoke(o);
            }
        });
    }

}
