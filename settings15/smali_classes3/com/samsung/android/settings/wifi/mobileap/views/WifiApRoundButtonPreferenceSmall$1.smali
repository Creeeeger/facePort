.class public final Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->$r8$clinit:I

    const-string p0, "WifiApRoundButtonPreferenceSmall"

    const-string p1, "Button Clicked"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
