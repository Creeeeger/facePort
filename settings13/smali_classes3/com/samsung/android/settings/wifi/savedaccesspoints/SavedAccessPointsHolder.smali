.class public Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SavedAccessPointsHolder.java"


# instance fields
.field private mCategory:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCategory;

.field private mCell:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;

.field public roundMode:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;->roundMode:I

    .line 32
    instance-of v0, p1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;

    if-eqz v0, :cond_0

    .line 33
    check-cast p1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;->mCell:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;

    goto :goto_0

    .line 34
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCategory;

    if-eqz v0, :cond_1

    .line 35
    check-cast p1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;->mCategory:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCategory;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCategory()Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCategory;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;->mCategory:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCategory;

    return-object p0
.end method

.method public getCell()Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;->mCell:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCell;

    return-object p0
.end method
