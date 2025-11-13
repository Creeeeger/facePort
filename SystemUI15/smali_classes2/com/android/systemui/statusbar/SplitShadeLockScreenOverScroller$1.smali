.class public final Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$1;->this$0:Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget p1, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$1;->this$0:Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;

    iget-object p1, p0, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070755

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;->transitionToFullShadeDistance:I

    const v0, 0x7f070758

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;->maxOverScrollAmount:I

    const v0, 0x7f0b0083

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;->releaseOverScrollDuration:J

    return-void
.end method
