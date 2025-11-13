.class public final synthetic Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;

    sget p1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->$r8$clinit:I

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyDoublePressSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
