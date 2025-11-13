.class public Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;
.super Ljava/lang/Object;
.source "EngineeringModeToken.java"


# static fields
.field private static blacklist mEngineeringModeToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;


# instance fields
.field private blacklist mDeviceInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

.field private blacklist mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

.field private blacklist mIntegrityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

.field private blacklist mIssuerInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

.field private blacklist mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

.field private blacklist mModeInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

.field private blacklist mOTPtime:I

.field private blacklist mPrefix:Ljava/lang/String;

.field private blacklist mTokenInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

.field private blacklist mType:Ljava/lang/String;

.field private blacklist mValidityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

.field private blacklist mVersion:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mTokenInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 18
    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mDeviceInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIssuerInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 20
    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mValidityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    .line 23
    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    .line 24
    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIntegrityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-void
.end method


# virtual methods
.method public blacklist getDeviceInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mDeviceInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-object v0
.end method

.method public blacklist getGroupDB()Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    return-object v0
.end method

.method public blacklist getIntegrityInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIntegrityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-object v0
.end method

.method public blacklist getIssuerInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIssuerInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-object v0
.end method

.method public blacklist getModeDB()Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    return-object v0
.end method

.method public blacklist getModeInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-object v0
.end method

.method public blacklist getOTPTime()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mOTPtime:I

    return v0
.end method

.method public blacklist getPrefix()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTokenInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mTokenInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-object v0
.end method

.method public blacklist getType()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValidityInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mValidityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-object v0
.end method

.method public blacklist getVersion()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist pushAttrToGroupItem(III[B)V
    .locals 1
    .param p1, "groupIndex"    # I
    .param p2, "type"    # I
    .param p3, "len"    # I
    .param p4, "attribute"    # [B

    .line 94
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->addAttrToGroupItem(III[B)V

    .line 99
    :cond_0
    return-void
.end method

.method public blacklist pushAttrToModeItem(III[B)V
    .locals 1
    .param p1, "modeIndex"    # I
    .param p2, "type"    # I
    .param p3, "len"    # I
    .param p4, "attribute"    # [B

    .line 81
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;->addAttrToModeItem(III[B)V

    .line 86
    :cond_0
    return-void
.end method

.method public blacklist pushDeviceInfo(II[B)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "len"    # I
    .param p3, "content"    # [B

    .line 51
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mDeviceInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "DEVI"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mDeviceInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mDeviceInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->addCommonItem(II[B)V

    .line 55
    return-void
.end method

.method public blacklist pushGroupDB(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "groupIndex"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "GRDB"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->addGroupItemCollection(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public blacklist pushIntegrityInfo(II[B)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "len"    # I
    .param p3, "content"    # [B

    .line 101
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIntegrityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "INTE"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIntegrityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIntegrityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->addCommonItem(II[B)V

    .line 105
    return-void
.end method

.method public blacklist pushIssuerInfo(II[B)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "len"    # I
    .param p3, "content"    # [B

    .line 57
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIssuerInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "ISSU"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIssuerInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIssuerInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->addCommonItem(II[B)V

    .line 61
    return-void
.end method

.method public blacklist pushModeDB(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "modeIndex"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "groupIndex"    # I

    .line 75
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "MODB"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;->addModeItemCollection(ILjava/lang/String;Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public blacklist pushModeInfo(II[B)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "len"    # I
    .param p3, "content"    # [B

    .line 63
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "MODE"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->addCommonItem(II[B)V

    .line 67
    return-void
.end method

.method public blacklist pushOTPTime(I)V
    .locals 0
    .param p1, "value"    # I

    .line 107
    iput p1, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mOTPtime:I

    .line 108
    return-void
.end method

.method public blacklist pushTokenInfo(II[B)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "len"    # I
    .param p3, "content"    # [B

    .line 45
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mTokenInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "TOKE"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mTokenInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mTokenInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->addCommonItem(II[B)V

    .line 49
    return-void
.end method

.method public blacklist pushValidityInfo(II[B)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "len"    # I
    .param p3, "content"    # [B

    .line 69
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mValidityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "VALI"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mValidityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mValidityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->addCommonItem(II[B)V

    .line 73
    return-void
.end method

.method public blacklist setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mPrefix:Ljava/lang/String;

    return-void
.end method

.method public blacklist setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mType:Ljava/lang/String;

    return-void
.end method

.method public blacklist setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mVersion:Ljava/lang/String;

    return-void
.end method
