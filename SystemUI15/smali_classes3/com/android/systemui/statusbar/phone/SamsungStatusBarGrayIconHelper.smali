.class public final Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public grayIconChangedCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$3;

.field public homeIndicatorIconColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->context:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper$SettingsObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "need_dark_statusbar"

    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->homeIndicatorIconColor:I

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper$SettingsObserver;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper$SettingsObserver;->customStatusUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
