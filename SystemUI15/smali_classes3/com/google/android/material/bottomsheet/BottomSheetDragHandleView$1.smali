.class public final Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView$1;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 1

    sget v0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->$r8$clinit:I

    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView$1;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->onBottomSheetStateChanged(I)V

    return-void
.end method
