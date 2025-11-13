.class public abstract Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AbsExecute"

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onExecute(ILcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;)Z
.end method
