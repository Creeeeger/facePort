.class public final Lcom/android/systemui/cover/CoverScreenManager$2;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/cover/CoverScreenManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/cover/CoverScreenManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$2;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$2;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverWindowDelegate;->show()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->initialize(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->prepareVirtualDisplay()V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez p1, :cond_4

    const-wide/16 v1, 0x12c

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_0
    return-void
.end method
