.class Lcom/tbruyelle/rxpermissions3/RxPermissions$1;
.super Ljava/lang/Object;
.source "RxPermissions.java"

# interfaces
.implements Lcom/tbruyelle/rxpermissions3/RxPermissions$Lazy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions3/RxPermissions;->getLazySingleton(Landroidx/fragment/app/FragmentManager;)Lcom/tbruyelle/rxpermissions3/RxPermissions$Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tbruyelle/rxpermissions3/RxPermissions$Lazy<",
        "Lcom/tbruyelle/rxpermissions3/RxPermissionsFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private rxPermissionsFragment:Lcom/tbruyelle/rxpermissions3/RxPermissionsFragment;

.field final synthetic this$0:Lcom/tbruyelle/rxpermissions3/RxPermissions;

.field final synthetic val$fragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions3/RxPermissions;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions3/RxPermissions$1;->this$0:Lcom/tbruyelle/rxpermissions3/RxPermissions;

    iput-object p2, p0, Lcom/tbruyelle/rxpermissions3/RxPermissions$1;->val$fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Lcom/tbruyelle/rxpermissions3/RxPermissionsFragment;
    .locals 2

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions3/RxPermissions$1;->rxPermissionsFragment:Lcom/tbruyelle/rxpermissions3/RxPermissionsFragment;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions3/RxPermissions$1;->this$0:Lcom/tbruyelle/rxpermissions3/RxPermissions;

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions3/RxPermissions$1;->val$fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, v1}, Lcom/tbruyelle/rxpermissions3/RxPermissions;->access$000(Lcom/tbruyelle/rxpermissions3/RxPermissions;Landroidx/fragment/app/FragmentManager;)Lcom/tbruyelle/rxpermissions3/RxPermissionsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/tbruyelle/rxpermissions3/RxPermissions$1;->rxPermissionsFragment:Lcom/tbruyelle/rxpermissions3/RxPermissionsFragment;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions3/RxPermissions$1;->rxPermissionsFragment:Lcom/tbruyelle/rxpermissions3/RxPermissionsFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions3/RxPermissions$1;->get()Lcom/tbruyelle/rxpermissions3/RxPermissionsFragment;

    move-result-object v0

    return-object v0
.end method
