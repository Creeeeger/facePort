.class public final synthetic Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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
