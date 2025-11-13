.class public abstract Lcom/samsung/android/knox/PersonaManagerInternal;
.super Ljava/lang/Object;
.source "PersonaManagerInternal.java"


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist doKeyguardTimeout()V
.end method

.method public abstract greylist getAdminComponentNameFromEdm(I)Landroid/content/ComponentName;
.end method

.method public abstract greylist getECName(I)Ljava/lang/String;
.end method

.method public abstract greylist isKnoxId(I)Z
.end method

.method public abstract greylist onDeviceLockedChanged(I)V
.end method

.method public abstract greylist shouldConfirmCredentials(I)Z
.end method
