.class public final Landroid/app/AutomaticZenRule$Builder;
.super Ljava/lang/Object;
.source "AutomaticZenRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AutomaticZenRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowManualInvocation:Z

.field private blacklist mConditionId:Landroid/net/Uri;

.field private blacklist mConfigurationActivity:Landroid/content/ComponentName;

.field private blacklist mCreationTime:J

.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

.field private blacklist mEnabled:Z

.field private blacklist mIconResId:I

.field private blacklist mInterruptionFilter:I

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mOwner:Landroid/content/ComponentName;

.field private blacklist mPkg:Ljava/lang/String;

.field private blacklist mPolicy:Landroid/service/notification/ZenPolicy;

.field private blacklist mType:I


# direct methods
.method public constructor blacklist <init>(Landroid/app/AutomaticZenRule;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mInterruptionFilter:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule$Builder;->mEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mConfigurationActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mPolicy:Landroid/service/notification/ZenPolicy;

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mType:I

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mOwner:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mConditionId:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mInterruptionFilter:I

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule$Builder;->mEnabled:Z

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mConfigurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getDeviceEffects()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getType()I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mType:I

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getTriggerDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getIconResId()I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mIconResId:I

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isManualInvocationAllowed()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule$Builder;->mAllowManualInvocation:Z

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getCreationTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AutomaticZenRule$Builder;->mCreationTime:J

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mPkg:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mInterruptionFilter:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule$Builder;->mEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mConfigurationActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mPolicy:Landroid/service/notification/ZenPolicy;

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mType:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mName:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mConditionId:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/AutomaticZenRule;
    .locals 9

    new-instance v8, Landroid/app/AutomaticZenRule;

    iget-object v1, p0, Landroid/app/AutomaticZenRule$Builder;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/AutomaticZenRule$Builder;->mOwner:Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/app/AutomaticZenRule$Builder;->mConfigurationActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/app/AutomaticZenRule$Builder;->mConditionId:Landroid/net/Uri;

    iget-object v5, p0, Landroid/app/AutomaticZenRule$Builder;->mPolicy:Landroid/service/notification/ZenPolicy;

    iget v6, p0, Landroid/app/AutomaticZenRule$Builder;->mInterruptionFilter:I

    iget-boolean v7, p0, Landroid/app/AutomaticZenRule$Builder;->mEnabled:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    iget-object v1, p0, Landroid/app/AutomaticZenRule$Builder;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-static {v0, v1}, Landroid/app/AutomaticZenRule;->-$$Nest$fputmDeviceEffects(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenDeviceEffects;)V

    iget-wide v1, p0, Landroid/app/AutomaticZenRule$Builder;->mCreationTime:J

    invoke-static {v0, v1, v2}, Landroid/app/AutomaticZenRule;->-$$Nest$fputcreationTime(Landroid/app/AutomaticZenRule;J)V

    iget v1, p0, Landroid/app/AutomaticZenRule$Builder;->mType:I

    invoke-static {v0, v1}, Landroid/app/AutomaticZenRule;->-$$Nest$fputmType(Landroid/app/AutomaticZenRule;I)V

    iget-object v1, p0, Landroid/app/AutomaticZenRule$Builder;->mDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/AutomaticZenRule;->-$$Nest$fputmTriggerDescription(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    iget v1, p0, Landroid/app/AutomaticZenRule$Builder;->mIconResId:I

    invoke-static {v0, v1}, Landroid/app/AutomaticZenRule;->-$$Nest$fputmIconResId(Landroid/app/AutomaticZenRule;I)V

    iget-boolean v1, p0, Landroid/app/AutomaticZenRule$Builder;->mAllowManualInvocation:Z

    invoke-static {v0, v1}, Landroid/app/AutomaticZenRule;->-$$Nest$fputmAllowManualInvocation(Landroid/app/AutomaticZenRule;Z)V

    iget-object v1, p0, Landroid/app/AutomaticZenRule$Builder;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule;->setPackageName(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist setConditionId(Landroid/net/Uri;)Landroid/app/AutomaticZenRule$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mConditionId:Landroid/net/Uri;

    return-object p0
.end method

.method public blacklist setConfigurationActivity(Landroid/content/ComponentName;)Landroid/app/AutomaticZenRule$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mConfigurationActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public blacklist setCreationTime(J)Landroid/app/AutomaticZenRule$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/AutomaticZenRule$Builder;->mCreationTime:J

    return-object p0
.end method

.method public blacklist setDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)Landroid/app/AutomaticZenRule$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    return-object p0
.end method

.method public blacklist setEnabled(Z)Landroid/app/AutomaticZenRule$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/AutomaticZenRule$Builder;->mEnabled:Z

    return-object p0
.end method

.method public blacklist setIconResId(I)Landroid/app/AutomaticZenRule$Builder;
    .locals 0

    iput p1, p0, Landroid/app/AutomaticZenRule$Builder;->mIconResId:I

    return-object p0
.end method

.method public blacklist setInterruptionFilter(I)Landroid/app/AutomaticZenRule$Builder;
    .locals 0

    iput p1, p0, Landroid/app/AutomaticZenRule$Builder;->mInterruptionFilter:I

    return-object p0
.end method

.method public blacklist setManualInvocationAllowed(Z)Landroid/app/AutomaticZenRule$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/AutomaticZenRule$Builder;->mAllowManualInvocation:Z

    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setOwner(Landroid/content/ComponentName;)Landroid/app/AutomaticZenRule$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mOwner:Landroid/content/ComponentName;

    return-object p0
.end method

.method public blacklist setPackage(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setTriggerDescription(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setType(I)Landroid/app/AutomaticZenRule$Builder;
    .locals 1

    invoke-static {p1}, Landroid/app/AutomaticZenRule;->-$$Nest$smcheckValidType(I)I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mType:I

    return-object p0
.end method

.method public blacklist setZenPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/AutomaticZenRule$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mPolicy:Landroid/service/notification/ZenPolicy;

    return-object p0
.end method
