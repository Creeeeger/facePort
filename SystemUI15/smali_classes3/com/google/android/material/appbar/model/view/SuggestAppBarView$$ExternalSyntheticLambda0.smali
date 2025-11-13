.class public final synthetic Lcom/google/android/material/appbar/model/view/SuggestAppBarView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/google/android/material/appbar/model/view/SuggestAppBarView;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/google/android/material/appbar/model/view/SuggestAppBarView;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/material/appbar/model/view/SuggestAppBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/material/appbar/model/view/SuggestAppBarView;

    invoke-static {v0, p0, p1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->$r8$lambda$fJm3iHT4ZB7Lw1WSd03z2tJAV-s(Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;Lcom/google/android/material/appbar/model/view/SuggestAppBarView;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/appbar/model/ButtonModel;

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/material/appbar/model/view/SuggestAppBarView;

    invoke-static {v0, p0, p1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->$r8$lambda$wsqYA_PvK0yf0H1q8MO7SXz0h5Q(Lcom/google/android/material/appbar/model/ButtonModel;Lcom/google/android/material/appbar/model/view/SuggestAppBarView;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
