.class public Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "LockAfterTimeoutActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockAfterTimeoutFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method

.method private disableUnusableTimeouts(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 161
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_1

    .line 162
    aget-object v2, p4, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_0

    .line 164
    aget-object v2, p3, v1

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    aget-object v2, p4, v1

    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revisedValues.size() : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "LockAfterTimeoutActivity"

    invoke-static {v1, p3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v2, 0x1

    sub-int/2addr p3, v2

    invoke-virtual {p6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, p1, v3

    .line 172
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last_timeout : "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-lez p3, :cond_2

    .line 174
    array-length p3, p4

    sub-int/2addr p3, v2

    aget-object p3, p4, p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    cmp-long p3, p1, p3

    if-gez p3, :cond_2

    .line 175
    sget p3, Lcom/android/settings/R$string;->lock_timeout_max:I

    new-array p4, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    invoke-virtual {p0, p3, p4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 9

    const-wide/16 v0, 0x3e8

    .line 181
    div-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    .line 182
    div-long v2, p1, v0

    .line 183
    rem-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settings/R$plurals;->lock_timeout_minutes:I

    long-to-int v2, v2

    invoke-virtual {v7, v8, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v5

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    if-lez v4, :cond_1

    cmp-long v3, p1, v0

    if-lez v3, :cond_1

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$plurals;->lock_timeout_seconds:I

    long-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v5

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getTimeoutNewEntry : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockAfterTimeoutActivity"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 4

    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->lock_after_timeout_values:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 237
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 238
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private setScreenTimeoutAdapter(Ljava/lang/Long;)V
    .locals 12

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 112
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "screen_off_timeout"

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v7, v0

    sub-long v9, v4, v7

    .line 113
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maxTimeout before Knox is = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", adminTimeout : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", displayTimeout : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "LockAfterTimeoutActivity"

    invoke-static {v6, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v8, "getPasswordLockDelay"

    invoke-static {v0, v7, v8, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPasswordLockDelay - "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", adminTimeout - "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_2

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v7, v1

    .line 123
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_1

    :cond_1
    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v7, v1

    .line 125
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_1

    :cond_2
    move-wide v7, v9

    .line 131
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "maxTimeout after Knox is = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/android/settings/R$array;->lock_after_timeout_entries:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 134
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v9, Lcom/android/settings/R$array;->lock_after_timeout_values:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    cmp-long v1, v4, v2

    if-gtz v1, :cond_4

    if-ltz v0, :cond_3

    goto :goto_2

    .line 149
    :cond_3
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v6, v9}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;-><init>(Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mAdapter:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    goto :goto_3

    .line 137
    :cond_4
    :goto_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 138
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-wide v1, v7

    move-object v3, v6

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    .line 139
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->disableUnusableTimeouts(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 141
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 142
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 144
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 145
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 147
    new-instance v2, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;-><init>(Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mAdapter:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    .line 152
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mAdapter:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mAdapter:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->getPositionFromValue(J)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mAdapter:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->getPositionFromValue(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1150

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 76
    sget p0, Lcom/android/settings/R$layout;->sec_lock_after_timeout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 205
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    .line 208
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mAdapter:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    invoke-virtual {p1, p3}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->getValueFromPosition(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long p4, p1

    .line 209
    invoke-direct {p0, p4, p5}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->isInDefaultTimeoutList(J)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p4, "lock_after_timeout_rollback"

    invoke-static {p2, p4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const p1, 0x1b7741

    .line 216
    :goto_0
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSubDisplay(Landroid/content/Context;)Z

    move-result p2

    const-wide/16 p4, 0x0

    const/16 v0, 0x1153

    if-eqz p2, :cond_1

    const-string p2, "4432_S"

    add-int/lit8 p3, p3, 0x61

    int-to-char p3, p3

    .line 217
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v0, p3, p4, p5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_1

    :cond_1
    const/16 p2, 0x1150

    add-int/lit8 p3, p3, 0x61

    int-to-char p3, p3

    .line 219
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v0, p3, p4, p5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;J)V

    .line 221
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "lock_screen_lock_after_timeout"

    invoke-static {p2, p3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "SecuritySettings"

    const-string p3, "could not persist lockAfter timeout setting"

    .line 223
    invoke-static {p2, p3, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 103
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->setScreenTimeoutAdapter(Ljava/lang/Long;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 81
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mContext:Landroid/content/Context;

    .line 83
    sget p2, Lcom/android/settings/R$id;->lock_after_timeout_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_1

    const/16 p2, 0xf

    .line 85
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->semSetRoundedCorners(I)V

    .line 86
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/ListView;->semSetRoundedCornerColor(II)V

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 89
    sget p2, Lcom/android/settings/R$dimen;->sec_widget_list_with_radio_btn_divider_inset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget v0, Lcom/android/settings/R$dimen;->sec_widget_list_radio_width_for_divider_padding_inset:I

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p1, p2

    .line 91
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 92
    new-instance p2, Landroid/graphics/drawable/InsetDrawable;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 93
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 95
    :cond_0
    new-instance p2, Landroid/graphics/drawable/InsetDrawable;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 96
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method
