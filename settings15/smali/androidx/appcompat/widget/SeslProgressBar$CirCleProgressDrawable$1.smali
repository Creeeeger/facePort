.class public final Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$1;
.super Landroid/util/IntProperty;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$1:Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$1;->this$1:Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;

    const-string/jumbo p1, "visual_progress"

    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;

    iget p0, p1, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mProgress:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;

    iput p2, p1, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mProgress:I

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$1;->this$1:Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
