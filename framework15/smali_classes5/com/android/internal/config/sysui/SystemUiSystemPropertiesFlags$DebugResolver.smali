.class public Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$DebugResolver;
.super Ljava/lang/Object;
.source "SystemUiSystemPropertiesFlags.java"

# interfaces
.implements Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugResolver"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I
    .locals 2

    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    iget v1, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultIntValue:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    invoke-virtual {p0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$DebugResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist getStringValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Ljava/lang/String;
    .locals 2

    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultStringValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    invoke-virtual {p0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$DebugResolver;->getStringValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist isEnabled(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultValue:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$DebugResolver;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    invoke-virtual {p0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$DebugResolver;->isEnabled(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$DebugResolver;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
