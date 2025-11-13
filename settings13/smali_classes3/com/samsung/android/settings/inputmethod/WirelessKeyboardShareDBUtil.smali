.class public Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;
.super Ljava/lang/Object;
.source "WirelessKeyboardShareDBUtil.java"


# static fields
.field private static mCompareData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSaveData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareData:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mContext:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->init()V

    return-void
.end method

.method private getChangedDate()I
    .locals 4

    .line 165
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wireless_keyboard_setting_repository"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsingValue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WirelessKeyboardShareDBUtil"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsingValue null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const-string v0, "/"

    .line 172
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 173
    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 174
    aget-object v0, p0, v1

    sget-object v2, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareData:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private getSaveDataToString()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->initSaveData()V

    const/4 v0, 0x1

    .line 58
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->parsing(Z)V

    return-void
.end method

.method private initSaveData()V
    .locals 12

    .line 97
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 98
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 99
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 100
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/4 v4, 0x2

    const-string v5, ",,"

    invoke-virtual {p0, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 101
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-virtual {p0, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 102
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/4 v7, 0x4

    invoke-virtual {p0, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 103
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/4 v8, 0x5

    invoke-virtual {p0, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 104
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/4 v9, 0x6

    invoke-virtual {p0, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 105
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/4 v10, 0x7

    invoke-virtual {p0, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 106
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/16 v11, 0x8

    invoke-virtual {p0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 108
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 109
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareData:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 110
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareData:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 111
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareData:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 112
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareData:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 113
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareData:Ljava/util/ArrayList;

    invoke-virtual {p0, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 114
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareData:Ljava/util/ArrayList;

    invoke-virtual {p0, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 115
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareData:Ljava/util/ArrayList;

    invoke-virtual {p0, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 116
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareData:Ljava/util/ArrayList;

    invoke-virtual {p0, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 117
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareData:Ljava/util/ArrayList;

    invoke-virtual {p0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static loadByBoolean(I)Z
    .locals 3

    .line 150
    sget-object v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 151
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadByBoolean ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], boolean is "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WirelessKeyboardShareDBUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private parsing(Z)V
    .locals 6

    .line 66
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wireless_keyboard_setting_repository"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "/"

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 74
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, p0, v1

    if-eqz p1, :cond_1

    .line 76
    sget-object v4, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mCompareData:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_1
    sget-object v4, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getChangedType()I
    .locals 2

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->getChangedDate()I

    move-result v0

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->parsing(Z)V

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    const-string p0, "wireless_keyboard_setting_repository"

    .line 161
    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public gethostlist()[Ljava/lang/String;
    .locals 2

    .line 189
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ",,"

    :cond_0
    const/4 v0, 0x5

    const-string v1, ","

    .line 193
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public loadByString(I)Ljava/lang/String;
    .locals 1

    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadByString ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], String is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WirelessKeyboardShareDBUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public save(II)V
    .locals 0

    .line 131
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->save(ILjava/lang/String;)V

    return-void
.end method

.method public save(ILjava/lang/String;)V
    .locals 3

    if-nez p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const-string p2, ",,"

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 142
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mSaveData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->getSaveDataToString()Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "wireless_keyboard_setting_repository"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 146
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "save ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], value is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WirelessKeyboardShareDBUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public save(IZ)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->save(II)V

    return-void
.end method

.method public syncData()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->parsing(Z)V

    return-void
.end method
