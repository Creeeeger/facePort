.class public final Lcom/android/settings/spa/about/DeviceNamePresenter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final deviceNamePreferenceController:Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;

    const-string v1, "unused_key"

    invoke-direct {v0, p1, v1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/spa/about/DeviceNamePresenter;->deviceNamePreferenceController:Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;

    return-void
.end method
