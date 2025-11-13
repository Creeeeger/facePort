.class public Landroid/security/CredentialManagementApp;
.super Ljava/lang/Object;
.source "CredentialManagementApp.java"


# static fields
.field private static final blacklist KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final blacklist TAG:Ljava/lang/String; = "CredentialManagementApp"


# instance fields
.field private blacklist mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/security/AppUriAuthenticationPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/security/CredentialManagementApp;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/security/CredentialManagementApp;->mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

    return-void
.end method

.method public static blacklist readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/security/CredentialManagementApp;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "package_name"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/security/AppUriAuthenticationPolicy;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/security/AppUriAuthenticationPolicy;

    move-result-object v2

    new-instance v3, Landroid/security/CredentialManagementApp;

    invoke-direct {v3, v1, v2}, Landroid/security/CredentialManagementApp;-><init>(Ljava/lang/String;Landroid/security/AppUriAuthenticationPolicy;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    const-string v2, "CredentialManagementApp"

    const-string v3, "Reading from xml failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public blacklist getAuthenticationPolicy()Landroid/security/AppUriAuthenticationPolicy;
    .locals 1

    iget-object v0, p0, Landroid/security/CredentialManagementApp;->mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/CredentialManagementApp;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setAuthenticationPolicy(Landroid/security/AppUriAuthenticationPolicy;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/security/CredentialManagementApp;->mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

    return-void
.end method

.method public blacklist writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "package_name"

    iget-object v1, p0, Landroid/security/CredentialManagementApp;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Landroid/security/CredentialManagementApp;->mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/CredentialManagementApp;->mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

    invoke-virtual {v0, p1}, Landroid/security/AppUriAuthenticationPolicy;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    :cond_0
    return-void
.end method
