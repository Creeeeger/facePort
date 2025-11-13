.class public final Lcom/android/systemui/qs/bar/VideoCallEffect$contentObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/VideoCallEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/VideoCallEffect;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VideoCallEffect$contentObserver$1;->this$0:Lcom/android/systemui/qs/bar/VideoCallEffect;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect$contentObserver$1;->this$0:Lcom/android/systemui/qs/bar/VideoCallEffect;

    :try_start_0
    sget p1, Lkotlin/Result;->$r8$clinit:I

    if-eqz p2, :cond_0

    sget-object p1, Lcom/android/systemui/qs/bar/VideoCallEffect;->URI_VSET_APP_STATUS_DATA:Landroid/net/Uri;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/bar/VideoCallEffect;->parseVce(Landroid/net/Uri;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :goto_0
    sget p1, Lkotlin/Result;->$r8$clinit:I

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_1
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onChange: exception occurred: "

    const-string p2, "VideoCallEffect"

    invoke-static {p1, p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
