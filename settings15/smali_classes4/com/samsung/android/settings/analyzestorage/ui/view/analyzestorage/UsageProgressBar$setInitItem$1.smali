.class public final Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setInitItem$1;
.super Landroid/view/ViewOutlineProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setInitItem$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "outline"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setInitItem$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0700e0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
