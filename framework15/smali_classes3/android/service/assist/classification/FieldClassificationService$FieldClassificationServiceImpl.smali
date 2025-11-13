.class final Landroid/service/assist/classification/FieldClassificationService$FieldClassificationServiceImpl;
.super Landroid/service/assist/classification/IFieldClassificationService$Stub;
.source "FieldClassificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/assist/classification/FieldClassificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FieldClassificationServiceImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/assist/classification/FieldClassificationService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/assist/classification/FieldClassificationService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/assist/classification/FieldClassificationService$FieldClassificationServiceImpl;->this$0:Landroid/service/assist/classification/FieldClassificationService;

    invoke-direct {p0}, Landroid/service/assist/classification/IFieldClassificationService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/assist/classification/FieldClassificationService;Landroid/service/assist/classification/FieldClassificationService$FieldClassificationServiceImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/assist/classification/FieldClassificationService$FieldClassificationServiceImpl;-><init>(Landroid/service/assist/classification/FieldClassificationService;)V

    return-void
.end method


# virtual methods
.method public blacklist onConnected(ZZ)V
    .locals 1

    iget-object v0, p0, Landroid/service/assist/classification/FieldClassificationService$FieldClassificationServiceImpl;->this$0:Landroid/service/assist/classification/FieldClassificationService;

    invoke-static {v0, p1, p2}, Landroid/service/assist/classification/FieldClassificationService;->-$$Nest$mhandleOnConnected(Landroid/service/assist/classification/FieldClassificationService;ZZ)V

    return-void
.end method

.method public blacklist onDisconnected()V
    .locals 1

    iget-object v0, p0, Landroid/service/assist/classification/FieldClassificationService$FieldClassificationServiceImpl;->this$0:Landroid/service/assist/classification/FieldClassificationService;

    invoke-static {v0}, Landroid/service/assist/classification/FieldClassificationService;->-$$Nest$mhandleOnDisconnected(Landroid/service/assist/classification/FieldClassificationService;)V

    return-void
.end method

.method public blacklist onFieldClassificationRequest(Landroid/service/assist/classification/FieldClassificationRequest;Landroid/service/assist/classification/IFieldClassificationCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/service/assist/classification/FieldClassificationService$FieldClassificationServiceImpl;->this$0:Landroid/service/assist/classification/FieldClassificationService;

    invoke-static {v0, p1, p2}, Landroid/service/assist/classification/FieldClassificationService;->-$$Nest$mhandleOnClassificationRequest(Landroid/service/assist/classification/FieldClassificationService;Landroid/service/assist/classification/FieldClassificationRequest;Landroid/service/assist/classification/IFieldClassificationCallback;)V

    return-void
.end method
