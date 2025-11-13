.class public Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LockAfterTimeoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RadioAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mEntries:[Ljava/lang/CharSequence;

.field mValues:[Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 1

    .line 251
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->this$0:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;

    .line 252
    sget p1, Lcom/android/settings/R$layout;->sec_lock_after_timeout_list_item:I

    sget v0, Lcom/android/settings/R$id;->timeout_title:I

    invoke-direct {p0, p2, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 254
    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->mContext:Landroid/content/Context;

    .line 255
    iput-object p3, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 256
    iput-object p4, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->mValues:[Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getPositionFromValue(J)I
    .locals 3

    const/4 v0, 0x0

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->mValues:[Ljava/lang/CharSequence;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 266
    aget-object v1, v1, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    array-length p0, v1

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getValueFromPosition(I)Ljava/lang/String;
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->mValues:[Ljava/lang/CharSequence;

    aget-object p0, p0, p1

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 261
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
