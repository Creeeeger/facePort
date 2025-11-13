.class Lcom/android/systemui/util/settings/SecureSettingsImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/settings/SecureSettings;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public getStringForUser(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface {p0, p2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getRealUserHandle(I)I

    move-result p0

    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getUserTracker()Lcom/android/systemui/settings/UserTracker;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface {p0, p3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getRealUserHandle(I)I

    move-result p0

    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public putStringForUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface {p0, p5}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getRealUserHandle(I)I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0
.end method
