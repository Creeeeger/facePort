.class Landroidx/picker/app/SeslTimePickerDialog$2;
.super Ljava/lang/Object;
.source "SeslTimePickerDialog.java"

# interfaces
.implements Landroidx/picker/util/SeslAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/app/SeslTimePickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/app/SeslTimePickerDialog;


# direct methods
.method constructor <init>(Landroidx/picker/app/SeslTimePickerDialog;)V
    .locals 0

    .line 146
    iput-object p1, p0, Landroidx/picker/app/SeslTimePickerDialog$2;->this$0:Landroidx/picker/app/SeslTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 1

    .line 149
    iget-object p0, p0, Landroidx/picker/app/SeslTimePickerDialog$2;->this$0:Landroidx/picker/app/SeslTimePickerDialog;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/picker/app/SeslTimePickerDialog;->access$102(Landroidx/picker/app/SeslTimePickerDialog;Z)Z

    return-void
.end method
