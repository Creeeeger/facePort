.class public Lcom/samsung/android/sume/Utils$StrongReference;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrongReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 19
    .local p0, "this":Lcom/samsung/android/sume/Utils$StrongReference;, "Lcom/samsung/android/sume/Utils$StrongReference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 20
    .local p0, "this":Lcom/samsung/android/sume/Utils$StrongReference;, "Lcom/samsung/android/sume/Utils$StrongReference<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/sume/Utils$StrongReference;->value:Ljava/lang/Object;

    .line 22
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    .line 33
    .local p0, "this":Lcom/samsung/android/sume/Utils$StrongReference;, "Lcom/samsung/android/sume/Utils$StrongReference<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/Utils$StrongReference;->value:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public blacklist get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 29
    .local p0, "this":Lcom/samsung/android/sume/Utils$StrongReference;, "Lcom/samsung/android/sume/Utils$StrongReference<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/Utils$StrongReference;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    .line 37
    .local p0, "this":Lcom/samsung/android/sume/Utils$StrongReference;, "Lcom/samsung/android/sume/Utils$StrongReference<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/Utils$StrongReference;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/samsung/android/sume/Utils$StrongReference;, "Lcom/samsung/android/sume/Utils$StrongReference<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/samsung/android/sume/Utils$StrongReference;->value:Ljava/lang/Object;

    .line 26
    return-void
.end method
