.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;
.super Ljava/lang/Object;
.source "BluetoothExpListController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdatePosition"
.end annotation


# instance fields
.field private sortedPosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private updatePosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->updatePosList:Ljava/util/ArrayList;

    .line 913
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->sortedPosList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;-><init>()V

    return-void
.end method


# virtual methods
.method public addUpdatePosList(II)V
    .locals 2

    .line 916
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->updatePosList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->updatePosList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->sortedPosList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->sortedPosList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->updatePosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 935
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->sortedPosList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getSortedList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 930
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->sortedPosList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getUpdatePosition(I)I
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->updatePosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 922
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->updatePosList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
