.class public Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
.super Ljava/lang/Object;
.source "EnterpriseLDAPAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist ACTION_CREATE_LDAP_ACCOUNT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CREATE_LDAPACCOUNT_INTERNAL"

.field public static final whitelist ACTION_LDAP_CREATE_ACCOUNT_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT_INTERNAL"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/sec/enterprise/email/EnterpriseLDAPAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ERROR_LDAP_ALREADY_EXISTS:I = -0x1

.field public static final whitelist ERROR_LDAP_CONNECTION:I = -0x7

.field public static final whitelist ERROR_LDAP_DOES_NOT_EXIST:I = -0x2

.field public static final whitelist ERROR_LDAP_INVALID_CREDENTIALS:I = -0x3

.field public static final whitelist ERROR_LDAP_NONE:I = 0x0

.field public static final whitelist ERROR_LDAP_SERVER_BUSY:I = -0x4

.field public static final whitelist ERROR_LDAP_SERVER_DOWN:I = -0x5

.field public static final whitelist ERROR_LDAP_TIMEOUT:I = -0x6

.field public static final whitelist ERROR_LDAP_UNKNOWN:I = -0x8

.field public static final whitelist EXTRA_BASE_DN_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BASE_DN_INTERNAL"

.field public static final whitelist EXTRA_HOST_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.HOST_INTERNAL"

.field public static final whitelist EXTRA_IS_ANONYMOUS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.IS_ANONYMOUS_INTERNAL"

.field public static final whitelist EXTRA_IS_SSL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.IS_SSL_INTERNAL"

.field public static final whitelist EXTRA_LDAP_ACCOUNT_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LDAP_ACCT_ID"

.field public static final whitelist EXTRA_LDAP_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LDAP_RESULT"

.field public static final whitelist EXTRA_LDAP_USER_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LDAP_USER_ID"

.field public static final whitelist EXTRA_PORT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PORT_INTERNAL"

.field public static final whitelist EXTRA_SERVICE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

.field public static final whitelist EXTRA_TRUST_ALL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

.field public static final whitelist EXTRA_USER_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

.field public static final whitelist EXTRA_USER_NAME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_NAME_INTERNAL"

.field public static final whitelist EXTRA_USER_PASSWORD_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_PASSWORD_ID_INTERNAL"


# instance fields
.field public whitelist mBaseDN:Ljava/lang/String;

.field public whitelist mHost:Ljava/lang/String;

.field public whitelist mId:J

.field public whitelist mIsAnonymous:Z

.field public whitelist mPassword:Ljava/lang/String;

.field public whitelist mPort:I

.field public whitelist mTrustAll:I

.field public whitelist mUseSSL:Z

.field public whitelist mUserName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount$1;

    invoke-direct {v0}, Landroid/sec/enterprise/email/EnterpriseLDAPAccount$1;-><init>()V

    sput-object v0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUserName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mHost:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUseSSL:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mIsAnonymous:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mBaseDN:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mTrustAll:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUseSSL:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mIsAnonymous:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mBaseDN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mTrustAll:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
