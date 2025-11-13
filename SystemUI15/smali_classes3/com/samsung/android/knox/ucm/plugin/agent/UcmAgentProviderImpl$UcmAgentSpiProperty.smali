.class public interface abstract Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSpiProperty;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final KEY_ADMIN_ID:Ljava/lang/String; = "admin_id"

.field public static final KEY_ALGORITHM:Ljava/lang/String; = "algorithm"

.field public static final KEY_CALLER_UID:Ljava/lang/String; = "callerUid"

.field public static final KEY_ENTRY_TYPE:Ljava/lang/String; = "entryType"

.field public static final KEY_EXTRA_ARGS:Ljava/lang/String; = "extraArgs"

.field public static final KEY_ISALLOWWIFI:Ljava/lang/String; = "allow_wifi"

.field public static final KEY_ISMANAGED:Ljava/lang/String; = "ismanaged"

.field public static final KEY_IS_CALLER_MDM:Ljava/lang/String; = "ismdm"

.field public static final KEY_KEYSIZE:Ljava/lang/String; = "keysize"

.field public static final KEY_OWNER_ID:Ljava/lang/String; = "ownerUid"

.field public static final KEY_REMOVABLE_USER_CERTIFICATES_LIST:Ljava/lang/String; = "removable_user_certificates_list"

.field public static final KEY_RENEW_CERT:Ljava/lang/String; = "renew"

.field public static final KEY_RESOURCE_ID:Ljava/lang/String; = "resource"

.field public static final KEY_SECRET_KEY:Ljava/lang/String; = "secret_key"

.field public static final KEY_STORAGE_OPTION:Ljava/lang/String; = "ese_storage_option"

.field public static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field public static final PRIVATE_RESOURCE:I = 0x2

.field public static final SHARED_KEYCHAIN_RESOURCE:I = 0x1

.field public static final SHARED_WIFI_RESOURCE:I = 0x3

.field public static final STORE_INSIDE_CS:I = 0x65

.field public static final STORE_OUTSIDE_CS:I = 0x66

.field public static final UCS_ALL_RESOURCE:I = 0x4


# virtual methods
.method public abstract getErrorCode()I
.end method

.method public abstract getProperty()Landroid/os/Bundle;
.end method

.method public abstract setErrorCode(I)V
.end method

.method public abstract setProperty(Landroid/os/Bundle;)V
.end method
