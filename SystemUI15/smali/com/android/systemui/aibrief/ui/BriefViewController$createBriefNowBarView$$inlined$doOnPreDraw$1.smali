.class public final Lcom/android/systemui/aibrief/ui/BriefViewController$createBriefNowBarView$$inlined$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $this_doOnPreDraw:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/aibrief/ui/BriefViewController;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/aibrief/ui/BriefViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$createBriefNowBarView$$inlined$doOnPreDraw$1;->$this_doOnPreDraw:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$createBriefNowBarView$$inlined$doOnPreDraw$1;->this$0:Lcom/android/systemui/aibrief/ui/BriefViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$createBriefNowBarView$$inlined$doOnPreDraw$1;->this$0:Lcom/android/systemui/aibrief/ui/BriefViewController;

    invoke-static {v0}, Lcom/android/systemui/aibrief/ui/BriefViewController;->access$initAnimatedViews(Lcom/android/systemui/aibrief/ui/BriefViewController;)V

    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController$createBriefNowBarView$$inlined$doOnPreDraw$1;->this$0:Lcom/android/systemui/aibrief/ui/BriefViewController;

    invoke-static {p0}, Lcom/android/systemui/aibrief/ui/BriefViewController;->access$startFourStarAnimation(Lcom/android/systemui/aibrief/ui/BriefViewController;)V

    return-void
.end method
