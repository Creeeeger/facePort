.class Lcom/samsung/android/settings/lockscreen/ContactInformation$2;
.super Ljava/lang/Object;
.source "ContactInformation.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/ContactInformation;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/ContactInformation;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$2;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 164
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$2;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->-$$Nest$fgetmOwnerInfoEditText(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 165
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$2;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->-$$Nest$mshowInputMethod(Lcom/samsung/android/settings/lockscreen/ContactInformation;)V

    return-void
.end method
