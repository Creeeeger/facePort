.class public final Lcom/android/settings/applications/RunningState$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/RunningState;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/applications/RunningState$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    iget v0, p0, Lcom/android/settings/applications/RunningState$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/settings/applications/RunningState$ProcessItem;

    check-cast p2, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v0, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v1, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_3

    iget-object p0, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    iget p0, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-ne v0, p0, :cond_1

    :cond_0
    :goto_0
    move v2, v3

    goto :goto_1

    :cond_1
    if-ne v1, p0, :cond_2

    goto :goto_1

    :cond_2
    if-ge v0, v1, :cond_7

    goto :goto_0

    :cond_3
    iget-boolean p0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    iget-boolean v0, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_4
    iget-boolean p0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    iget-boolean v0, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    if-eq p0, v0, :cond_5

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_5
    iget-wide p0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v0, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    cmp-long p0, p0, v0

    if-eqz p0, :cond_6

    if-lez p0, :cond_7

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_1
    return v2

    :pswitch_0
    check-cast p1, Lcom/android/settings/applications/RunningState$MergedItem;

    check-cast p2, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v0, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v1, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_b

    iget-object p0, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    iget p0, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-ne v0, p0, :cond_8

    goto/16 :goto_8

    :cond_8
    if-ne v1, p0, :cond_a

    :cond_9
    :goto_2
    move v2, v3

    goto/16 :goto_8

    :cond_a
    if-ge v0, v1, :cond_9

    goto/16 :goto_8

    :cond_b
    iget-object p0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_d

    iget-object p0, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    if-ne p0, p1, :cond_c

    :goto_3
    move v2, v1

    goto/16 :goto_8

    :cond_c
    if-eqz p0, :cond_1a

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_8

    :cond_d
    if-nez p0, :cond_e

    goto/16 :goto_8

    :cond_e
    if-nez v0, :cond_f

    goto :goto_2

    :cond_f
    iget-object p1, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object p2, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x190

    if-lt v4, v5, :cond_10

    move v4, v3

    goto :goto_4

    :cond_10
    move v4, v1

    :goto_4
    iget v6, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v6, v5, :cond_11

    move v5, v3

    goto :goto_5

    :cond_11
    move v5, v1

    :goto_5
    if-eq v4, v5, :cond_12

    if-eqz v4, :cond_1a

    goto :goto_2

    :cond_12
    iget v4, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_13

    move v4, v3

    goto :goto_6

    :cond_13
    move v4, v1

    :goto_6
    iget v5, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_14

    move v5, v3

    goto :goto_7

    :cond_14
    move v5, v1

    :goto_7
    if-eq v4, v5, :cond_15

    if-eqz v4, :cond_9

    goto :goto_8

    :cond_15
    iget p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iget p2, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    if-eq p1, p2, :cond_16

    if-ge p1, p2, :cond_9

    goto :goto_8

    :cond_16
    iget-object p0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iget-object p1, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    if-ne p0, p1, :cond_17

    goto :goto_3

    :cond_17
    if-nez p0, :cond_18

    goto :goto_2

    :cond_18
    if-nez p1, :cond_19

    goto :goto_8

    :cond_19
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    :cond_1a
    :goto_8
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
