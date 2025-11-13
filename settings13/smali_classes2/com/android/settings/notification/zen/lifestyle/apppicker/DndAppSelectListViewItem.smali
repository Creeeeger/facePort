.class public Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListViewItem;
.super Ljava/lang/Object;
.source "DndAppSelectListViewItem.java"


# instance fields
.field private mPkg:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUid:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListViewItem;->mTitle:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListViewItem;->mPkg:Ljava/lang/String;

    .line 11
    iput p3, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListViewItem;->mUid:I

    return-void
.end method


# virtual methods
.method public getPkg()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListViewItem;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListViewItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getmUid()I
    .locals 0

    .line 22
    iget p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListViewItem;->mUid:I

    return p0
.end method
