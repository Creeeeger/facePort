.class public final synthetic Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;

    return-void
.end method


# virtual methods
.method public final perform(Landroid/view/View;)Z
    .locals 0

    sget p1, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->$r8$clinit:I

    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->expandOrCollapseBottomSheetIfPossible()Z

    move-result p0

    return p0
.end method
