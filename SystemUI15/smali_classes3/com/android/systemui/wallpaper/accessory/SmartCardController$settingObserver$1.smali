.class public final Lcom/android/systemui/wallpaper/accessory/SmartCardController$settingObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/accessory/SmartCardController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$settingObserver$1;->this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "settingObserver, uri: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmartCardController"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "user_setup_complete"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x1388

    goto :goto_0

    :cond_0
    const-string p1, "dls_state"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$settingObserver$1;->this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    sget p2, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-wide/16 p1, 0x3e8

    goto :goto_0

    :cond_2
    const-wide/16 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$settingObserver$1;->this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    sget v1, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->$r8$clinit:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->sendUpdateState(JZ)V

    return-void
.end method
