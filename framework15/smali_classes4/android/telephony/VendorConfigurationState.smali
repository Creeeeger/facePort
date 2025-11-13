.class public Landroid/telephony/VendorConfigurationState;
.super Ljava/lang/Object;
.source "VendorConfigurationState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CONFIG_CA_ENABLED:Ljava/lang/String; = "CA_ENABLED"

.field public static final greylist CONFIG_EGPRS_SUPPORT:Ljava/lang/String; = "EGPRS_SUPPORT"

.field public static final greylist CONFIG_FRAMEWORK_READY:Ljava/lang/String; = "FW_READY"

.field public static final greylist CONFIG_ISCTC:Ljava/lang/String; = "IS_CTC"

.field public static final greylist CONFIG_LTE_CS_CAPA:Ljava/lang/String; = "LTE_CS_CAPA"

.field public static final greylist CONFIG_MSIM_SUBMODE:Ljava/lang/String; = "MSIM_SUBMODE"

.field public static final greylist CONFIG_REJECT_INFO_FOR_SIM_TRANSFER:Ljava/lang/String; = "REJECT_INFO_FOR_SIM_TRANSFER"

.field public static final greylist CONFIG_SUPPORTED_NRCA:Ljava/lang/String; = "SUPPORTED_NRCA"

.field public static final greylist CONFIG_SUPPORTED_RAT:Ljava/lang/String; = "SUPPORTED_RAT"

.field public static final greylist CONFIG_SUPPORT_LTE_CAPA_OPTION_C:Ljava/lang/String; = "SUPPORT_LTE_CAPA_OPTION_C"

.field public static final greylist CONFIG_SUPPORT_UAC_TYPE:Ljava/lang/String; = "SUPPORT_UAC_TYPE"

.field public static final greylist CONFIG_VOLTE_E911CALL:Ljava/lang/String; = "VOLTE_911_CALL"

.field public static final greylist CONFIG_WFC_DEFAULT_SPN:Ljava/lang/String; = "WFC_DEFAULT_SPN"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/VendorConfigurationState;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "VendorConfigurationState"


# instance fields
.field private blacklist mDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/VendorConfigurationState$1;

    invoke-direct {v0}, Landroid/telephony/VendorConfigurationState$1;-><init>()V

    sput-object v0, Landroid/telephony/VendorConfigurationState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    const-string v1, "FW_READY"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    const-string v1, "EGPRS_SUPPORT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    const-string v1, "SUPPORTED_RAT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    const-string v1, "IS_CTC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    const-string v1, "VOLTE_911_CALL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    const-string v1, "CA_ENABLED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    const-string v1, "LTE_CS_CAPA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    const-string v1, "MSIM_SUBMODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    const-string v1, "SUPPORTED_NRCA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    const-string v1, "SUPPORT_LTE_CAPA_OPTION_C"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    const-string v1, "REJECT_INFO_FOR_SIM_TRANSFER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    const-string v1, "WFC_DEFAULT_SPN"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    const-string v1, "SUPPORT_UAC_TYPE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/VendorConfigurationState;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/VendorConfigurationState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    invoke-virtual {p0, p1}, Landroid/telephony/VendorConfigurationState;->copyFrom(Landroid/telephony/VendorConfigurationState;)V

    return-void
.end method


# virtual methods
.method protected blacklist copyFrom(Landroid/telephony/VendorConfigurationState;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getData - VendorConfiguration does not match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VendorConfigurationState"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0
.end method

.method public blacklist getDataAsBool(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/telephony/VendorConfigurationState;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getDataAsInt(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telephony/VendorConfigurationState;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public blacklist setData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setData - VendorConfiguration does not match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VendorConfigurationState"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "Vendor Configuration state - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
