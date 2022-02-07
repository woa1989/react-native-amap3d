import { NativeModules, Platform } from "react-native";

const { AMapSdk } = NativeModules;

export function init(apiKey?: string) {
  if (Platform.OS === "android") {
    AMapSdk.init(apiKey);
  } else {
    AMapSdk.setApiKey(apiKey);
  }
}

export function getVersion(): Promise<string> {
  return AMapSdk.getVersion();
}
