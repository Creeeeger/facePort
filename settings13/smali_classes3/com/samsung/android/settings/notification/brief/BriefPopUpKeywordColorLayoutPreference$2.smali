.class Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$2;
.super Ljava/lang/Object;
.source "BriefPopUpKeywordColorLayoutPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$2;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$2;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$mcheckTextAvailable(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
