.class public final synthetic Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda2;->$r8$classId:I

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x2

    if-ge p0, p1, :cond_0

    iget-object p1, p2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;->mIconColors:[Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$IconColor;

    const/4 v0, 0x0

    aput-object v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    const/4 p0, 0x0

    :goto_1
    const/4 p1, 0x2

    if-ge p0, p1, :cond_1

    iget-object p1, p2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$Colors;->mWindowColors:[Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$ColorCache$WindowColor;

    const/4 v0, 0x0

    aput-object v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
