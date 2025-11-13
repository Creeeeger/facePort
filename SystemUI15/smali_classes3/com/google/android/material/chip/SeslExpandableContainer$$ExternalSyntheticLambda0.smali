.class public final synthetic Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/chip/SeslExpandableContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/chip/SeslExpandableContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/chip/SeslExpandableContainer;

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/chip/SeslExpandableContainer;

    sget p1, Lcom/google/android/material/chip/SeslExpandableContainer;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->updateScrollExpansionButton()V

    return-void
.end method
