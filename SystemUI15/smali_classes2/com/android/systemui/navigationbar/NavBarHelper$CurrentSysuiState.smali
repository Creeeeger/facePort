.class public final Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mWindowState:I

.field public final mWindowStateDisplayId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavBarHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/systemui/navigationbar/NavBarHelper;->mWindowStateDisplayId:I

    iput v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;->mWindowStateDisplayId:I

    iget p1, p1, Lcom/android/systemui/navigationbar/NavBarHelper;->mWindowState:I

    iput p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;->mWindowState:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/NavBarHelper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;->mWindowStateDisplayId:I

    iget-object p1, p1, Lcom/android/systemui/navigationbar/NavBarHelper;->mWindowStateDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;->mWindowState:I

    return-void
.end method
