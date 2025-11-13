.class public Lcom/android/internal/org/bouncycastle/jce/spec/ECKeySpec;
.super Ljava/lang/Object;
.source "ECKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private blacklist spec:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECKeySpec;->spec:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    return-void
.end method


# virtual methods
.method public blacklist getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECKeySpec;->spec:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    return-object v0
.end method
