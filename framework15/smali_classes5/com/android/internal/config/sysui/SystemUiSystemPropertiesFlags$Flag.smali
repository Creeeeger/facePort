.class public final Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;
.super Ljava/lang/Object;
.source "SystemUiSystemPropertiesFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Flag"
.end annotation


# instance fields
.field public final blacklist mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

.field public final blacklist mDefaultIntValue:I

.field public final blacklist mDefaultStringValue:Ljava/lang/String;

.field public final blacklist mDefaultValue:Z

.field public final blacklist mSysPropKey:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ILcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultIntValue:I

    iput-object p3, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultValue:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultStringValue:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultStringValue:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultValue:Z

    iput v0, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultIntValue:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZLcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultValue:Z

    iput-object p3, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultIntValue:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultStringValue:Ljava/lang/String;

    return-void
.end method
