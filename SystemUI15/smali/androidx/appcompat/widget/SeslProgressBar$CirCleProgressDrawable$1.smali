.class public final Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$1;
.super Landroid/util/IntProperty;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$1:Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$1;->this$1:Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;

    invoke-direct {p0, p2}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

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
