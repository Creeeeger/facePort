.class public final synthetic Lcom/samsung/android/settings/display/SecFontTrialSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$$ExternalSyntheticLambda0;->f$0:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings$$ExternalSyntheticLambda0;->f$0:Landroid/widget/ListView;

    sub-int/2addr p9, p5

    if-lez p9, :cond_0

    invoke-virtual {p0, p9}, Landroid/widget/ListView;->semSmoothScrollBy(I)V

    :cond_0
    return-void
.end method
