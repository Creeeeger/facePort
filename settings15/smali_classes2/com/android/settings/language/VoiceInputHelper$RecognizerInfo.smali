.class public final Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mComponentName:Landroid/content/ComponentName;

.field public final mKey:Ljava/lang/String;

.field public final mLabel:Ljava/lang/CharSequence;

.field public final mLabelStr:Ljava/lang/String;

.field public final mSelectableAsDefault:Z

.field public final mService:Landroid/content/pm/ServiceInfo;

.field public final mSettings:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;->mService:Landroid/content/pm/ServiceInfo;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;->mKey:Ljava/lang/String;

    if-eqz p3, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;->mSettings:Landroid/content/ComponentName;

    invoke-virtual {p2, p1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;->mLabelStr:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    iput-boolean p4, p0, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;->mSelectableAsDefault:Z

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;

    iget-object p0, p0, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;->mLabelStr:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;->mLabelStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
