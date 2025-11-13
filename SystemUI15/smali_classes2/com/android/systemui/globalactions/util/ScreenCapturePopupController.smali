.class public final Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mPrefrerences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const/4 p2, 0x0

    const-string v0, "device_options_screen_capture"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;->mPrefrerences:Landroid/content/SharedPreferences;

    return-void
.end method
