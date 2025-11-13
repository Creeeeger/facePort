.class public final Lcom/android/settingslib/spaprivileged/model/enterprise/BaseUserRestricted;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spaprivileged/model/enterprise/BaseUserRestricted;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/enterprise/BaseUserRestricted;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/spaprivileged/model/enterprise/BaseUserRestricted;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/enterprise/BaseUserRestricted;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/android/settingslib/spaprivileged/model/enterprise/BaseUserRestricted;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x69045c30    # 1.0000847E25f

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "BaseUserRestricted"

    return-object p0
.end method
