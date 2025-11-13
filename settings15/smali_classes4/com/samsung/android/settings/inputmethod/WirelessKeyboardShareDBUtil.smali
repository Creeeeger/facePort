.class public final Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SUPPORT_TYPE:[I

.field public static mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;


# instance fields
.field public final mCompareDataList:Ljava/util/ArrayList;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mLock:Ljava/lang/Object;

.field public final mSaveDataList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->SUPPORT_TYPE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveDataList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareDataList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mContentResolver:Landroid/content/ContentResolver;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    sget-object p1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->SUPPORT_TYPE:[I

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    aget v2, p1, v1

    if-ne v2, v3, :cond_0

    const-string v3, ""

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string v3, ",,"

    goto :goto_1

    :cond_1
    const-string v3, "0"

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->parsing(Z)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final getChangedType()I
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wireless_keyboard_setting_repository"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    const-string v1, "WirelessKeyboardShareDBUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "value is null, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v1, "WirelessKeyboardShareDBUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "value="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v4, v2

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_2

    aget-object v5, v0, v4

    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareDataList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    move v3, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->parsing(Z)V

    return v3

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getHostList()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveDataList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ",,"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v1, ","

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final loadByBoolean(I)Z
    .locals 4

    const-string v0, "loadByBoolean ["

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveDataList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string p0, "WirelessKeyboardShareDBUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], boolean is "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final loadByString()Ljava/lang/String;
    .locals 4

    const-string v0, "loadByString [7], String is "

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveDataList:Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v2, "WirelessKeyboardShareDBUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final parsing(Z)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wireless_keyboard_setting_repository"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveDataList:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move v4, v7

    goto :goto_0

    :cond_2
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final save(ILjava/lang/String;)V
    .locals 9

    if-nez p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const-string p2, ",,"

    goto :goto_0

    :cond_0
    const-string p2, ""

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wireless_keyboard_setting_repository"

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->SUPPORT_TYPE:[I

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    const/16 v7, 0x9

    if-ge v6, v7, :cond_2

    aget v7, v4, v6

    iget-object v8, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1, p0, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string p0, "WirelessKeyboardShareDBUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "save ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], value is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final save(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->save(ILjava/lang/String;)V

    return-void
.end method
