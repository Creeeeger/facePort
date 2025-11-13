.class public final Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final customStatusUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper$SettingsObserver;->context:Landroid/content/Context;

    const-string p1, "need_dark_statusbar"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper$SettingsObserver;->customStatusUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "need_dark_statusbar"

    invoke-static {p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x1

    :goto_0
    iput p2, p1, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->homeIndicatorIconColor:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->homeIndicatorIconColor:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "homeIndicatorIconColor changed to "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "(0x"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SamsungStatusBarGrayIconHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
