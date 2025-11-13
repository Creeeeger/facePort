.class public Lcom/samsung/android/settings/goodsettings/GoodSettingsProvider;
.super Landroid/content/ContentProvider;
.source "GoodSettingsProvider.java"


# static fields
.field private static final mValidTypes:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$eh9pA0Y6W_X71E3cxtlTfb5A3Wk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/goodsettings/GoodSettingsProvider;->lambda$isValidType$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Boolean"

    const-string v1, "String"

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/goodsettings/GoodSettingsProvider;->mValidTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getValue(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string p0, "type"

    .line 129
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "String"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "value"

    if-nez v0, :cond_1

    const-string v0, "Boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 133
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 135
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isValidType(Ljava/lang/String;)Z
    .locals 1

    .line 125
    sget-object p0, Lcom/samsung/android/settings/goodsettings/GoodSettingsProvider;->mValidTypes:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/goodsettings/GoodSettingsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/goodsettings/GoodSettingsProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isValidType$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 125
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private setBundle(Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Landroid/os/Bundle;
    .locals 3

    if-eqz p1, :cond_3

    .line 142
    iget-object p0, p1, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mKey:Ljava/lang/String;

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mType:Ljava/lang/String;

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mValue:Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_1

    .line 146
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 147
    iget-object v0, p1, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mKey:Ljava/lang/String;

    const-string v1, "key"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p1, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mType:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p1, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "String"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "value"

    if-nez v1, :cond_2

    const-string v1, "Boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    iget-object p1, p1, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mValue:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object p1, p1, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "[GS]GoodSettingsProvider"

    if-eqz p2, :cond_0

    const-string p0, "call() - method is empty"

    .line 65
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 69
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "initialize"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "getPolicy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "setPolicy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "compareAndMerge"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    const-string v3, "key"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-eqz p3, :cond_5

    .line 100
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object p1

    .line 101
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p0, p3}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->initializePolicy(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    return-object p2

    :pswitch_1
    if-eqz p3, :cond_6

    .line 73
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 74
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 76
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object p2

    .line 77
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getPolicy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/goodsettings/GoodSettingsProvider;->setBundle(Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_6
    return-object p2

    :pswitch_2
    if-eqz p3, :cond_7

    .line 85
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "type"

    .line 86
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "value"

    .line 87
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 88
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/goodsettings/GoodSettingsProvider;->isValidType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 91
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    .line 93
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/goodsettings/GoodSettingsProvider;->getValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v0, p1, p0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->setPolicy(Landroid/content/Context;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)V

    :cond_7
    return-object p2

    :pswitch_3
    if-eqz p3, :cond_8

    .line 107
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 108
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 110
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object p1

    .line 111
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->compareAndMergePolicy(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 112
    new-instance p3, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    .line 114
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Boolean"

    invoke-direct {p3, p2, v0, p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/goodsettings/GoodSettingsProvider;->setBundle(Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 118
    :cond_8
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "call() - Unsupported method : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x170db4a6 -> :sswitch_3
        0x1db9fc34 -> :sswitch_2
        0x2a84c828 -> :sswitch_1
        0x33ebcb90 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 54
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "delete operation not supported currently."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 44
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getType operation not supported currently."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 49
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "insert operation not supported currently."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 39
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "query operation not supported currently."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 59
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "update operation not supported currently."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
