.class public final synthetic Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/chip/SeslExpandableContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/chip/SeslExpandableContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/material/chip/SeslExpandableContainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/material/chip/SeslExpandableContainer;

    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    iget-boolean p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    iput-boolean p0, v0, Lcom/google/android/material/chip/SeslExpansionButton;->mExpanded:Z

    invoke-virtual {v0}, Landroid/widget/ImageView;->refreshDrawableState()V

    return-void
.end method
