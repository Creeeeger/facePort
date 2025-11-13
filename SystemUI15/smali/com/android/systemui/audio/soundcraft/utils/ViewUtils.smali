.class public final Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;

    invoke-direct {v0}, Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;-><init>()V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/ViewUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addViewIfNotAttached(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
