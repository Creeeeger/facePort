.class public final synthetic Lcom/google/android/material/datepicker/MaterialDatePicker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/datepicker/MaterialDatePicker;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()V

    const/4 p0, 0x0

    throw p0
.end method
