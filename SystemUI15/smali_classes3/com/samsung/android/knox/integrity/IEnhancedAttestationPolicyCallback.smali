.class public interface abstract Lcom/samsung/android/knox/integrity/IEnhancedAttestationPolicyCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.integrity.IEnhancedAttestationPolicyCallback"


# virtual methods
.method public abstract onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
