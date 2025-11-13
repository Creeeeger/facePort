.class final Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$params$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$params$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$params$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$params$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$params$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$params$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x7f6

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, -0x3

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string v0, "MediaOutputWindow"

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f140019

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object p0
.end method
