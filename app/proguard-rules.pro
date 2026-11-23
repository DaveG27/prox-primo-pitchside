# The page talks to the app through these methods by name.
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
-keep class com.proxprimo.pitchside.MainActivity$Bridge { *; }

# Named in the manifest's Cast metadata, so R8 can't see it's used.
-keep class com.proxprimo.pitchside.CastOptionsProvider { *; }

# Tink (used by the encrypted login storage) refers to annotation classes
# that aren't needed at runtime.
-dontwarn com.google.errorprone.annotations.**
-dontwarn javax.annotation.**
-dontwarn com.google.api.client.**
-dontwarn org.joda.time.**
