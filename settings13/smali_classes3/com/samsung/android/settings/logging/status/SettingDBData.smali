.class public Lcom/samsung/android/settings/logging/status/SettingDBData;
.super Ljava/lang/Object;
.source "SettingDBData.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mSettingsDBCategory:Ljava/lang/String;

.field private mSettingsDBName:Ljava/lang/String;

.field private mSettingsDBdefault:Ljava/lang/String;

.field private mSettingsDBtype:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "null"

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "null"

    .line 33
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SettingDBData"

    .line 20
    iput-object v0, p0, Lcom/samsung/android/settings/logging/status/SettingDBData;->TAG:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/samsung/android/settings/logging/status/SettingDBData;->mSettingsDBName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/settings/logging/status/SettingDBData;->mSettingsDBCategory:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/samsung/android/settings/logging/status/SettingDBData;->mSettingsDBtype:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/samsung/android/settings/logging/status/SettingDBData;->mSettingsDBdefault:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/settings/logging/status/SettingDBData;->mSettingsDBCategory:Ljava/lang/String;

    return-object p0
.end method

.method public getDefault()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/android/settings/logging/status/SettingDBData;->mSettingsDBdefault:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/settings/logging/status/SettingDBData;->mSettingsDBName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/logging/status/SettingDBData;->mSettingsDBName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Category :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/logging/status/SettingDBData;->mSettingsDBCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/logging/status/SettingDBData;->mSettingsDBtype:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
