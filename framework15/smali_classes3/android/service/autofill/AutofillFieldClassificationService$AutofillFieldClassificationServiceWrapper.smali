.class final Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;
.super Landroid/service/autofill/IAutofillFieldClassificationService$Stub;
.source "AutofillFieldClassificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/AutofillFieldClassificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutofillFieldClassificationServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/autofill/AutofillFieldClassificationService;


# direct methods
.method public static synthetic blacklist $r8$lambda$dvS3lrPyQtCXLZTc0rUTFiVI0dE(Landroid/service/autofill/AutofillFieldClassificationService;Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Landroid/service/autofill/AutofillFieldClassificationService;->-$$Nest$mcalculateScores(Landroid/service/autofill/AutofillFieldClassificationService;Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/autofill/AutofillFieldClassificationService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;->this$0:Landroid/service/autofill/AutofillFieldClassificationService;

    invoke-direct {p0}, Landroid/service/autofill/IAutofillFieldClassificationService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/autofill/AutofillFieldClassificationService;Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;-><init>(Landroid/service/autofill/AutofillFieldClassificationService;)V

    return-void
.end method


# virtual methods
.method public blacklist calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map;",
            "Ljava/util/Map;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;->this$0:Landroid/service/autofill/AutofillFieldClassificationService;

    invoke-static {v1}, Landroid/service/autofill/AutofillFieldClassificationService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillFieldClassificationService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper$$ExternalSyntheticLambda0;-><init>()V

    iget-object v3, v0, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;->this$0:Landroid/service/autofill/AutofillFieldClassificationService;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
